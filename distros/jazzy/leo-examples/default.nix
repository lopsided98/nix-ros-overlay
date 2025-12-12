
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-example-follow-aruco-marker, leo-example-line-follower, leo-example-object-detection }:
buildRosPackage {
  pname = "ros-jazzy-leo-examples";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_examples-ros2-release/archive/release/jazzy/leo_examples/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f53ac1056eabceecc1462ed0f552e52021f7c3d42b52d16c8ce11c5a26e218a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-example-follow-aruco-marker leo-example-line-follower leo-example-object-detection ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A collection of ROS2 packages that show an example usage of functionalities on a stock Leo Rover.";
    license = with lib.licenses; [ mit ];
  };
}
