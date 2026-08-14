
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-gazebo, tiago-pro-mujoco }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-simulation";
  version = "1.18.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_simulation-release/archive/release/humble/tiago_pro_simulation/1.18.0-1.tar.gz";
    name = "1.18.0-1.tar.gz";
    sha256 = "6184ef64590c70d8841a5f5f5c5cad57d8b4b1c1e1dbd9e91ce2ee59276f20ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-pro-gazebo tiago-pro-mujoco ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_pro_simulation package";
    license = with lib.licenses; [ asl20 ];
  };
}
