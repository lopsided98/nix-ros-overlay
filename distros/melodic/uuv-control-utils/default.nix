
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, nav-msgs, pythonPackages, rospy, std-msgs, uuv-control-msgs, uuv-gazebo-ros-plugins-msgs, uuv-trajectory-control, uuv-world-ros-plugins-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-control-utils";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_control_utils/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "7b4acaefcbd1899b5a4d5c3b9e4a24617317b65a86ca79322bdf871fadf69e74";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs nav-msgs pythonPackages.numpy pythonPackages.pyyaml rospy std-msgs uuv-control-msgs uuv-gazebo-ros-plugins-msgs uuv-trajectory-control uuv-world-ros-plugins-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_control_utils package'';
    license = with lib.licenses; [ asl20 ];
  };
}
