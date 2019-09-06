
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, unique-identifier-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-action-msgs";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/dashing/action_msgs/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "38cb5edc92f2efa9be656f6bebe5cb1b65f4d535cf0d1c34b1f1dfafa7252ab2";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces unique-identifier-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime unique-identifier-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Messages and service definitions common among all ROS actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
