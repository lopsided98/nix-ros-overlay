
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-ur-msgs";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_msgs-release/archive/release/kilted/ur_msgs/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "e173898b7e0f6c7e6683267954404c4739848834c781fd5546af883d08399eaa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service definitions for interacting with Universal Robots robot controllers.";
    license = with lib.licenses; [ bsd3 ];
  };
}
