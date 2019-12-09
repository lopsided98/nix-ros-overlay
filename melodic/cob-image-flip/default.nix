
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, boost, sensor-msgs, geometry-msgs, pluginlib, tf, catkin, image-transport, stereo-msgs, cob-perception-msgs, cv-bridge, pcl-conversions, nodelet, roscpp, opencv3 }:
buildRosPackage {
  pname = "ros-melodic-cob-image-flip";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_image_flip/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "a75ea8e5dfca1653e7b14e9df4be8714858decb9898bc20059a68b85eadf8cc0";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros boost sensor-msgs geometry-msgs pluginlib tf roscpp image-transport stereo-msgs cob-perception-msgs cv-bridge pcl-conversions nodelet opencv3 ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs boost geometry-msgs pluginlib tf image-transport cob-perception-msgs stereo-msgs cv-bridge pcl-conversions nodelet roscpp opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Flips the image of Care-O-bots kinect in dependence of the viewing direction of the cameras to receive an upright image all the time.'';
    license = with lib.licenses; [ asl20 ];
  };
}
