return {
  "sphamba/smear-cursor.nvim",
  opts = {
    --Aura
    cursor_color = "#ff00ff",
    particles_enabled = true,
    particle_spread = 1,
    particles_per_second = 500,
    particles_per_length = 50,
    particle_max_lifetime = 800,
    particle_max_initial_velocity = 20,
    particle_velocity_from_cursor = 0.5,
    particle_damping = 0.15,
    particle_gravity = -50,
    gamma = 1,
    min_distance_emit_particles = 0,

    --Velocity :)
    stiffness = 0.8, -- 0.6      [0, 1]
    trailing_stiffness = 0.6, -- 0.45     [0, 1]
    stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
    trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
    damping = 0.95, -- 0.85     [0, 1]
    damping_insert_mode = 0.95, -- 0.9      [0, 1]
    distance_stop_animating = 0.5, -- 0.1      > 0
  },
}
