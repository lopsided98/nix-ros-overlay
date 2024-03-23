
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cob-object-detection-msgs, cob-vision-utils, cv-bridge, diagnostic-msgs, diagnostic-updater, image-transport, opencv, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf, tinyxml, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-fiducials";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_fiducials-release/archive/release/noetic/cob_fiducials/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "ae99f6e6e6e3e1e0667b872a509134e5f9b053ae73620458f260a98890359741";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cmake-modules cob-object-detection-msgs cob-vision-utils cv-bridge diagnostic-msgs diagnostic-updater image-transport opencv opencv.cxxdev roscpp rospy sensor-msgs std-msgs std-srvs tf tinyxml visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Fiducial recognition. Implementation of different 2D tags like PI-tag from Bergamasco et al. for recognition with a single 2D camera.";
    license = with lib.licenses; [ "LGPL" ];
  };
}
