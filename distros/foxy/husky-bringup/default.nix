
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husky-base, husky-control, husky-description, microstrain-inertial-driver, realsense2-camera, robot-upstart, urg-node, velodyne-driver, velodyne-pointcloud }:
buildRosPackage {
  pname = "ros-foxy-husky-bringup";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_bringup/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "294d4523c11214779f863a92b7c2d136f97e3cb163d88417dba15fd633a06aa8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ husky-base husky-control husky-description microstrain-inertial-driver realsense2-camera robot-upstart urg-node velodyne-driver velodyne-pointcloud ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Husky installation and integration package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
