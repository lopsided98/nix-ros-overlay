
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, variant-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-variant-topic-tools";
  version = "0.1.5";

  src = fetchurl {
    url = https://github.com/anybotics/variant-release/archive/release/melodic/variant_topic_tools/0.1.5-0.tar.gz;
    sha256 = "1ae4620ffffc3b0a3aa6b54e148f6bf58f06ca520131aa72d07bc8c0732445eb";
  };

  propagatedBuildInputs = [ variant-msgs roslib roscpp ];
  nativeBuildInputs = [ variant-msgs catkin roslib roscpp ];

  meta = {
    description = ''Topic tools for treating messages as variant types.'';
    #license = lib.licenses.GNU Lesser General Public License (LGPL);
  };
}
