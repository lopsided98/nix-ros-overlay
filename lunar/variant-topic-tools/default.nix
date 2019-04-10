
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin, variant-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-variant-topic-tools";
  version = "0.1.5";

  src = fetchurl {
    url = https://github.com/anybotics/variant-release/archive/release/lunar/variant_topic_tools/0.1.5-0.tar.gz;
    sha256 = "2d0cf50fbf643958d6b091a623470da78d99203185ebc88b6eddb3cf744f1e57";
  };

  buildInputs = [ variant-msgs roslib roscpp ];
  propagatedBuildInputs = [ variant-msgs roslib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Topic tools for treating messages as variant types.'';
    #license = lib.licenses.GNU Lesser General Public License (LGPL);
  };
}
