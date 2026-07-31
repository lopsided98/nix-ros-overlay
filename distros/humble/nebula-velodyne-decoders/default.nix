
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-velodyne-common, rclcpp, ros-environment, velodyne-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-velodyne-decoders";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_velodyne_decoders/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "faf6d68dbdcc65f71b5614b06be293010d4c0c415d5c42db17ccac8a8877b51a";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ angles boost nebula-core-common nebula-core-decoders nebula-velodyne-common rclcpp velodyne-msgs ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Velodyne Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}
