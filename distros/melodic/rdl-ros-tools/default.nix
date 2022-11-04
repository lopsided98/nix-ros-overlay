
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, rdl-dynamics, rdl-msgs, rdl-urdfreader, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-rdl-ros-tools";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/-/archive/release/melodic/rdl_ros_tools/3.2.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "3d535dc2d58a675a64d78d2b30820586f00b16e350008e146e9ac19415e0c926";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rdl-dynamics rdl-msgs rdl-urdfreader roscpp rostest sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface into rdl tools'';
    license = with lib.licenses; [ "Zlib" ];
  };
}
