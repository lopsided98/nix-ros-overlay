
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-smacc2-msgs";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/SMACC2-release/archive/release/iron/smacc2_msgs/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "b2eb886680260730dadce23f69949bf218778e5bfe9755e94720d98583d7e454";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages and services used in smacc2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
