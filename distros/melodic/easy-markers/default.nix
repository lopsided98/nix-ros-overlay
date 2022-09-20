
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, roslint, rospy, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-easy-markers";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/easy_markers/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "813965652574355bf8c57995dfcd7c70da0f96b78fdf1c75df4e7c51f3454b42";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers rospy tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python library to assist in publishing markers easily'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
