
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-cascade-lifecycle-msgs";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/humble/cascade_lifecycle_msgs/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "b880a321e622aa2c1e1b21d05b67c91ac49553d09c5a8a0e12d925767033e8c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rclcpp rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for rclcpp_cascade_lifecycle package'';
    license = with lib.licenses; [ asl20 ];
  };
}
