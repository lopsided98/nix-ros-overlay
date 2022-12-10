
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-core, ament-lint-auto, ament-lint-common, rosidl-core-generators }:
buildRosPackage {
  pname = "ros-rolling-rosidl-default-generators";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_defaults-release/archive/release/rolling/rosidl_default_generators/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "f56d90894660e975ec4841a9b4d73480584c4848381ffc0b5929d457797bcadd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs ament-cmake-core rosidl-core-generators ];
  nativeBuildInputs = [ action-msgs ament-cmake ament-cmake-core rosidl-core-generators ];

  meta = {
    description = ''A configuration package defining the default ROS interface generators.'';
    license = with lib.licenses; [ asl20 ];
  };
}
