
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-bag-recorder-nodes";
  version = "0.3.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/bag_recorder_nodes/0.3.11-1.tar.gz";
    name = "0.3.11-1.tar.gz";
    sha256 = "e8d49eba595f9dfa9fafa3c204efc61aaf4cb7f0f7e04fadabf1baf19ada7e48";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ example-interfaces rclcpp rosbag2-cpp std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Sample nodes demonstrating how to write bags programmatically'';
    license = with lib.licenses; [ asl20 ];
  };
}
