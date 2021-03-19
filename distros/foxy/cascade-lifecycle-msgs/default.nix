
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-foxy-cascade-lifecycle-msgs";
  version = "0.0.7-r4";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/foxy/cascade_lifecycle_msgs/0.0.7-4.tar.gz";
    name = "0.0.7-4.tar.gz";
    sha256 = "efe3b41e8c2b10db244b8bde561b31438dc51b9bbc3fe1d077c6117e6506d360";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rclcpp rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for rclcpp_cascade_lifecycle package'';
    license = with lib.licenses; [ asl20 ];
  };
}
