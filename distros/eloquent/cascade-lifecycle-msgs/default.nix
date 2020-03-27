
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-eloquent-cascade-lifecycle-msgs";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/eloquent/cascade_lifecycle_msgs/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "0417eeebcca8bdb2cce8f89860900c4058621a452a27c697a6f4b32d46aea7b8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rclcpp rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for rclcpp_cascade_lifecycle package'';
    license = with lib.licenses; [ asl20 ];
  };
}
