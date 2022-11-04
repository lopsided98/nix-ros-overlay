
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, example-interfaces, rclcpp, rosbag2-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-bag-recorder-nodes";
  version = "0.3.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/bag_recorder_nodes/0.3.9-1.tar.gz";
    name = "0.3.9-1.tar.gz";
    sha256 = "f0632d4811553c36a304c5da7202b47c3f0c3c9caa69fc66b13a82ef873c4097";
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
