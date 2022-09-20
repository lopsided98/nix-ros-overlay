
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport }:
buildRosPackage {
  pname = "ros-melodic-compressed-depth-image-transport";
  version = "1.9.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_transport_plugins-release/archive/release/melodic/compressed_depth_image_transport/1.9.5-0.tar.gz";
    name = "1.9.5-0.tar.gz";
    sha256 = "344ba8616aae571668169db0759f432c049e9f2c272dbcbb2a82371ff285c212";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Compressed_depth_image_transport provides a plugin to image_transport for transparently sending
    depth images (raw, floating-point) using PNG compression.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
