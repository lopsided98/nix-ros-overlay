
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-base, ros-ign-bridge, ros-ign-gazebo, ros-ign-image, ros-ign-interfaces }:
buildRosPackage {
  pname = "ros-rolling-simulation";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/simulation/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "9b1c301a009af090e50841a0be676c381a237c2f391c78b9da89c546c5c0a44b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-base ros-ign-bridge ros-ign-gazebo ros-ign-image ros-ign-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_base' and includes simulation packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
