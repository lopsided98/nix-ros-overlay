
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport, libjpeg_turbo, rostest }:
buildRosPackage {
  pname = "ros-noetic-compressed-image-transport";
  version = "1.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/noetic/compressed_image_transport/1.15.0-1.tar.gz";
    name = "1.15.0-1.tar.gz";
    sha256 = "f2ca94a705d508273d49daf18aad8d84f81f17af8b6006221b2c9c843ae24b6f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure image-transport libjpeg_turbo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG or PNG.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
