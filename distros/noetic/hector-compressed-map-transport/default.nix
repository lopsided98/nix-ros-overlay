
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, eigen, geometry-msgs, hector-map-tools, image-transport, nav-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-compressed-map-transport";
  version = "0.5.2-r4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tu-darmstadt-ros-pkg-gbp";
        repo = "hector_slam-release";
        rev = "release/noetic/hector_compressed_map_transport/0.5.2-4";
        sha256 = "sha256-mrIO22M/bPwDW/opU8KKXPq+TR5/+o9nBGNFFxUqI6A=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge eigen geometry-msgs hector-map-tools image-transport nav-msgs sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_compressed_map_transport provides means for transporting compressed map data through the use of image_transport.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
