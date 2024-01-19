
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-base, ros-ign-bridge, ros-ign-gazebo, ros-ign-image, ros-ign-interfaces }:
buildRosPackage {
  pname = "ros-humble-simulation";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/humble/simulation/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "5d874be3abec3ce39ca9b6708b339d729ea3dcbc2acaa1cd4b3cd295c4ad7e61";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-base ros-ign-bridge ros-ign-gazebo ros-ign-image ros-ign-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_base' and includes simulation packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
