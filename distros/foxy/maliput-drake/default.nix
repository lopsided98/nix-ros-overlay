
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, fmt }:
buildRosPackage {
  pname = "ros-foxy-maliput-drake";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "maliput_drake-release";
        rev = "release/foxy/maliput_drake/0.1.1-1";
        sha256 = "sha256-ojySIFo+gDrJf/40vckXB+9CJyYw8cFXNLmzDIQOEq4=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module fmt ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Maliput drake extraction to provide trajectory integration support'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
