
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, ceres-solver, eigen, glog, libyamlcpp, qt5 }:
buildRosPackage {
  pname = "ros-foxy-rmf-traffic-editor";
  version = "1.4.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "rmf_traffic_editor-release";
        rev = "release/foxy/rmf_traffic_editor/1.4.0-1";
        sha256 = "sha256-yaXIUvNrO2a75jn3X9IPfylvRqPElKm6NlK212o+p28=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-index-cpp eigen libyamlcpp qt5.qtbase ];
  propagatedBuildInputs = [ ceres-solver glog ];

  meta = {
    description = ''traffic editor'';
    license = with lib.licenses; [ asl20 ];
  };
}
