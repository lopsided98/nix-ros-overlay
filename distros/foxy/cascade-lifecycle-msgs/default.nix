
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-foxy-cascade-lifecycle-msgs";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/foxy/cascade_lifecycle_msgs/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "d1c5fc2fce98d13e55663a70e763c687542d444c5ece61434a2310db4dca332e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rclcpp rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for rclcpp_cascade_lifecycle package'';
    license = with lib.licenses; [ asl20 ];
  };
}
