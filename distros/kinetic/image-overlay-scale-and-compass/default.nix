
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, click, cv-bridge, pythonPackages, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-image-overlay-scale-and-compass";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/danielsnider/image_overlay_scale_and_compass-release/archive/release/kinetic/image_overlay_scale_and_compass/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "6cce50c81ea583c78c9e05846e1323493c382b6e367ffe78fd392c27be6f6d68";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ click cv-bridge pythonPackages.numpy pythonPackages.opencv3 rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Add an indication of scale and compass to images.'';
    license = with lib.licenses; [ "Unlicense" ];
  };
}
