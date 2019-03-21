
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rdl-msgs, rdl-urdfreader, sensor-msgs, catkin, rdl-dynamics, rostest, nav-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rdl-ros-tools";
  version = "1.1.0";

  src = fetchurl {
    url = https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_ros_tools/1.1.0-0;
    sha256 = "f5855c1044dd86dfaab57dace95580d1838d7e0330a8a21eb0ec2d93d850216f";
  };

  propagatedBuildInputs = [ rdl-msgs rostest nav-msgs rdl-urdfreader sensor-msgs roscpp rdl-dynamics geometry-msgs ];
  nativeBuildInputs = [ rdl-msgs rdl-urdfreader sensor-msgs catkin rdl-dynamics rostest nav-msgs roscpp geometry-msgs ];

  meta = {
    description = ''ROS interface into rdl tools'';
    #license = lib.licenses.zlib;
  };
}
