default:
    @just --list

# apply home-manager configuration
switch:
    home-manager switch --flake .

# update flake inputs
update:
    nix flake update

# list generations
generations:
    home-manager generations

# garbage collect old generations
gc:
    nix-collect-garbage -d
