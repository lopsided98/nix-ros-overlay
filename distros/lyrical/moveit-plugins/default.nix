
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-lyrical-moveit-plugins";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_plugins/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "613179ad9c1f7458c29fbbc919f4aa09e08384ccba5fa9111e54bd455d0aafa9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-simple-controller-manager ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for MoveIt plugins.";
    license = with lib.licenses; [ bsd3 ];
  };
}
