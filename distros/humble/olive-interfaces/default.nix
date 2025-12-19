
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-olive-interfaces";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/olive-robotics/olive-ros2-interfaces-release/archive/release/humble/olive_interfaces/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "fbc4cea04b4d73edcdecff509c07140727e7932bfe67e3e2f8b3809d5779adcf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake geometry-msgs rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake geometry-msgs ];

  meta = {
    description = "This package provides all olive custom interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
