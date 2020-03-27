
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-perception-msgs, cv-bridge, geometry-msgs, image-transport, nodelet, opencv3, pcl-conversions, pcl-ros, pluginlib, roscpp, sensor-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-image-flip";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_image_flip/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "2032c318eaa0b869c9d4e531d661b684cdc30b78ca8da96dbdc3fcb62d011a5c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cob-perception-msgs cv-bridge geometry-msgs image-transport nodelet opencv3 pcl-conversions pcl-ros pluginlib roscpp sensor-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Flips the image of Care-O-bots kinect in dependence of the viewing direction of the cameras to receive an upright image all the time.'';
    license = with lib.licenses; [ asl20 ];
  };
}
