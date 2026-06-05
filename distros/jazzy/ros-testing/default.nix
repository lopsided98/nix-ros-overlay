
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-cmake-export-dependencies, launch-testing, launch-testing-ament-cmake, launch-testing-ros, ros2test }:
buildRosPackage {
  pname = "ros-jazzy-ros-testing";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_testing-release/archive/release/jazzy/ros_testing/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "f7a9b06a4985de80c5547c0d8fc20a111ca931466c43eb55d4ef2b9a2dad0f64";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-core ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ launch-testing launch-testing-ament-cmake launch-testing-ros ros2test ];
  nativeBuildInputs = [ ament-cmake launch-testing-ament-cmake ros2test ];

  meta = {
    description = "The entry point package to launch testing in ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
