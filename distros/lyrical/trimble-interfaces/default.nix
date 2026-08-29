
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-trimble-interfaces";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trimble_driver_ros-release/archive/release/lyrical/trimble_interfaces/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "fc8b80d8609f51fdfd5aee479ce4ce2c4431397451fe0b2eedbd807d25d32856";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Trimble interfaces";
    license = with lib.licenses; [ bsd2 ];
  };
}
