
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-psdk-interfaces";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/psdk_ros2-release/archive/release/humble/psdk_interfaces/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "66cddb4b1780967dacd75ec105fecfe0b7f624e2d1f6eded2c8c342fa4fa8701";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs geometry-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Provides custom message, srv and action types for psdk ros2 wrapper";
    license = with lib.licenses; [ "MPL" ];
  };
}
