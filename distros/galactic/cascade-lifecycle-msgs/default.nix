
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, lifecycle-msgs, rclcpp, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-galactic-cascade-lifecycle-msgs";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/fmrico/cascade_lifecycle-release/archive/release/galactic/cascade_lifecycle_msgs/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "7e795341e347e8d28b5af6936d4fc613717e8c34d99a90273b177b8b53f6c1c3";
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
