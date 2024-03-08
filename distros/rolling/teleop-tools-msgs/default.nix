
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-teleop-tools-msgs";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/teleop_tools_msgs/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "4de66399c08963b0122827208b04457f857fa92570e2d91d782f4986639a57fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The teleop_tools_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
