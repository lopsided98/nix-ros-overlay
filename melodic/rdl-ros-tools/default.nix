
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, nav-msgs, catkin, rdl-msgs, roscpp, rdl-dynamics, rdl-urdfreader, rostest }:
buildRosPackage {
  pname = "ros-melodic-rdl-ros-tools";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/melodic/rdl_ros_tools/3.2.0-1";
    name = "archive.tar.gz";
    sha256 = "3d535dc2d58a675a64d78d2b30820586f00b16e350008e146e9ac19415e0c926";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs rdl-urdfreader rdl-msgs roscpp rdl-dynamics nav-msgs rostest ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs rdl-urdfreader rdl-msgs roscpp rdl-dynamics nav-msgs rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface into rdl tools'';
    license = with lib.licenses; [ "zlib" ];
  };
}
