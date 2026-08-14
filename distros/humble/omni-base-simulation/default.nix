
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, omni-base-gazebo }:
buildRosPackage {
  pname = "ros-humble-omni-base-simulation";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/omni_base_simulation-release/archive/release/humble/omni_base_simulation/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "f32a2002100f1d45ff55f3184bba4c35ca80c0956980ee2ab05da179dc8c87de";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ omni-base-gazebo ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The omni_base_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
