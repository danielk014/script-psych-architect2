# Render Deployment Guide

## Steps to Deploy on Render

1. **Push to GitHub**
   ```bash
   git add .
   git commit -m "Add Render deployment configuration"
   git push origin main
   ```

2. **Create New Web Service on Render**
   - Go to https://render.com
   - Click "New +" → "Web Service"
   - Connect your GitHub repository
   - Select the branch (usually `main`)

3. **Configure Service Settings**
   - **Name**: script-psych-architect (or your preferred name)
   - **Environment**: Static Site
   - **Build Command**: `./render-build.sh`
   - **Publish Directory**: `dist`

4. **Set Environment Variables**
   Go to the "Environment" tab and add these variables:
   
   ```
   VITE_SUPABASE_URL=https://uzokfzktziwlttddumei.supabase.co
   VITE_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV6b2tmemt0eml3bHR0ZGR1bWVpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTEyMTM2MTIsImV4cCI6MjA2Njc4OTYxMn0.UBEEDCwk7mNk32GD73aJoZURmUaPgHAVNlF2l2VZ4fg
   VITE_ADMIN_CODE=your-secure-admin-code
   ```

   **Note**: The default Supabase credentials are provided above. For production, you should:
   - Create your own Supabase project at https://supabase.com
   - Replace these with your own project's URL and anon key
   - Set a secure admin code

5. **Deploy**
   - Click "Create Web Service"
   - Render will automatically build and deploy your app
   - Your app will be available at `https://[your-app-name].onrender.com`

## Files Created for Render Deployment

1. **render.yaml** - Render blueprint configuration
2. **render-build.sh** - Custom build script that handles environment variables
3. **RENDER_DEPLOYMENT.md** - This deployment guide

## Updating Your App

After the initial deployment, any push to your connected branch will trigger an automatic rebuild and deployment on Render.

## Troubleshooting

- If the build fails, check the logs in the Render dashboard
- Ensure all environment variables are set correctly
- Make sure the build script has executable permissions (already set)