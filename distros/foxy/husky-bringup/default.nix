
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husky-base, husky-control, husky-description, microstrain-inertial-driver, robot-upstart, urg-node, velodyne-driver, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-foxy-husky-bringup";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_bringup/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "08cc70dab9604cee4bd0fc04d347bd3879457d470b5355a539f0b550329ea09b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ husky-base husky-control husky-description microstrain-inertial-driver robot-upstart urg-node velodyne-driver velodyne-pointcloud ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
