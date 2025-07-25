// This file is automatically generated. Do not edit it directly.
import { createClient } from '@supabase/supabase-js';
import type { Database } from './types';

const SUPABASE_URL = import.meta.env.VITE_SUPABASE_URL || "https://uzokfzktziwlttddumei.supabase.co";
const SUPABASE_PUBLISHABLE_KEY = import.meta.env.VITE_SUPABASE_ANON_KEY || "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV6b2tmemt0eml3bHR0ZGR1bWVpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTEyMTM2MTIsImV4cCI6MjA2Njc4OTYxMn0.UBEEDCwk7mNk32GD73aJoZURmUaPgHAVNlF2l2VZ4fg";

// Import the supabase client like this:
// import { supabase } from "@/integrations/supabase/client";

export const supabase = createClient<Database>(SUPABASE_URL, SUPABASE_PUBLISHABLE_KEY);