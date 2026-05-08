
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, launch-ros, launch-testing-ament-cmake, sick-safevisionary-driver }:
buildRosPackage {
  pname = "ros-jazzy-sick-safevisionary-tests";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/jazzy/sick_safevisionary_tests/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "005748b09e9a6310fd1306c41284b66409f1570240960f72708e8e008675cba5";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch launch-ros launch-testing-ament-cmake sick-safevisionary-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Integration tests for the SICK safeVisionary ROS 2 driver";
    license = with lib.licenses; [ asl20 ];
  };
}
