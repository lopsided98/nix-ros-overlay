
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, rdl-dynamics, rdl-msgs, rdl-urdfreader, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rdl-ros-tools";
  version = "1.1.0";

  src = fetchurl {
    url = "https://gitlab.com/jlack/rdl_release/repository/archive.tar.gz?ref=release/kinetic/rdl_ros_tools/1.1.0-0";
    name = "archive.tar.gz";
    sha256 = "f5855c1044dd86dfaab57dace95580d1838d7e0330a8a21eb0ec2d93d850216f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rdl-dynamics rdl-msgs rdl-urdfreader roscpp rostest sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interface into rdl tools'';
    license = with lib.licenses; [ "zlib" ];
  };
}
