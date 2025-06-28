
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-canopen-inventus-interfaces";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/canopen_inventus-release/archive/release/jazzy/canopen_inventus_interfaces/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "4e980ece9eb4145d1ffc629f82423b3e2c2d48c9ef848033ae089e7d506f917d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Inventus Battery ROS interfaces for CANOpen implementation";
    license = with lib.licenses; [ bsd3 ];
  };
}
