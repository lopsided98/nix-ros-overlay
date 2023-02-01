
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-simple-term-menu-vendor";
  version = "1.5.7-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "simple_term_menu_vendor-release";
        rev = "release/humble/simple_term_menu_vendor/1.5.7-1";
        sha256 = "sha256-toTrUyUqy7ijNOnTyHXXDtn+mvXcO8izZRsbIFv9Szw=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''A Python package which creates simple interactive menus on the command line.'';
    license = with lib.licenses; [ mit ];
  };
}
