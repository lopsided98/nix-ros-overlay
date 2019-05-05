
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lunar-marti-perception-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/lunar/marti_perception_msgs/0.8.0-0.tar.gz;
    sha256 = "474361bcb295ed4bcad3b327b87fea5dd969e10070fb8c9f5b2bead779ed9640";
  };

  buildInputs = [ std-msgs sensor-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs sensor-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''marti_perception_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
