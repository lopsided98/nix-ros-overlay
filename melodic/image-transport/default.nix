
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, pluginlib, sensor-msgs, catkin, message-filters, roscpp, roslib }:
buildRosPackage {
  pname = "ros-melodic-image-transport";
  version = "1.11.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_common-release/archive/release/melodic/image_transport/1.11.13-0.tar.gz;
    sha256 = "070c49d03d5320c322237672d62c34b3fd3f8c4b311a76f3572894f368421d55";
  };

  propagatedBuildInputs = [ roslib pluginlib rosconsole sensor-msgs roscpp message-filters ];
  nativeBuildInputs = [ roslib catkin pluginlib rosconsole sensor-msgs roscpp message-filters ];

  meta = {
    description = ''image_transport should always be used to subscribe to and publish images. It provides transparent
     support for transporting images in low-bandwidth compressed formats. Examples (provided by separate
     plugin packages) include JPEG/PNG compression and Theora streaming video.'';
    #license = lib.licenses.BSD;
  };
}
