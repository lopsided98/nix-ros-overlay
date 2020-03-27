
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-eloquent-cascade-lifecycle-msgs";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/eloquent/cascade_lifecycle_msgs/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "9cbfdd80ad4f64ba04d117d20d477a95ad927fc30372f47f13adca7ea51c18a7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rclcpp rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for rclcpp_cascade_lifecycle package'';
    license = with lib.licenses; [ asl20 ];
  };
}
