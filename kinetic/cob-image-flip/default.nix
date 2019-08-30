
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-perception-msgs, pluginlib, boost, image-transport, sensor-msgs, cv-bridge, catkin, pcl-conversions, roscpp, nodelet, pcl-ros, tf, opencv3, geometry-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-image-flip";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_image_flip/0.6.14-1.tar.gz;
    sha256 = "9848793b2e1066452208abc42b997e35c7fac595dedede4898279ff124655f5a";
  };

  buildInputs = [ cob-perception-msgs pluginlib boost opencv3 image-transport sensor-msgs cv-bridge roscpp nodelet pcl-ros tf pcl-conversions geometry-msgs stereo-msgs ];
  propagatedBuildInputs = [ cob-perception-msgs pluginlib boost opencv3 image-transport sensor-msgs cv-bridge roscpp nodelet pcl-ros tf pcl-conversions geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Flips the image of Care-O-bots kinect in dependence of the viewing direction of the cameras to receive an upright image all the time.'';
    license = with lib.licenses; [ asl20 ];
  };
}
