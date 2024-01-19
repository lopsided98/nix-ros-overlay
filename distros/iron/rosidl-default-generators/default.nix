
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, rosidl-core-generators, service-msgs }:
buildRosPackage {
  pname = "ros-iron-rosidl-default-generators";
  version = "1.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/iron/rosidl_default_generators/1.5.0-3.tar.gz";
    name = "1.5.0-3.tar.gz";
    sha256 = "2e14192780f79c68863e95bd470112b9b65d5a1474c22d5d1682770b61ac2c8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs ament-cmake-core rosidl-core-generators service-msgs ];
  nativeBuildInputs = [ action-msgs ament-cmake ament-cmake-core rosidl-core-generators service-msgs ];

  meta = {
    description = ''A configuration package defining the default ROS interface generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
