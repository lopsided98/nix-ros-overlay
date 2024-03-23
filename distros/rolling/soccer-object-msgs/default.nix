
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-object-msgs";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_object_msgs-release/archive/release/rolling/soccer_object_msgs/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "99f65e36af648725c1e814af79ade3865761d1e5913ff0a465f6aebf39035fc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package providing interfaces for objects in a soccer domain.";
    license = with lib.licenses; [ asl20 ];
  };
}
