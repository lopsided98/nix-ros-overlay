
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-cras-msgs";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cras_msgs-release/archive/release/lyrical/cras_msgs/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "020d02369338c72f0788ac9b0daa95eb79eac912cd8906e6829ec7b90adda5f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Common messages used by CRAS";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
