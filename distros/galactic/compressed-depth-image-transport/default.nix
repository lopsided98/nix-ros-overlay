
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-transport }:
buildRosPackage {
  pname = "ros-galactic-compressed-depth-image-transport";
  version = "2.3.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/galactic/compressed_depth_image_transport/2.3.0-5.tar.gz";
    name = "2.3.0-5.tar.gz";
    sha256 = "040987efb61cdb93928c788485906699abd8d4344c6081b84606885486ef2611";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cv-bridge image-transport ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Compressed_depth_image_transport provides a plugin to image_transport for transparently sending
    depth images (raw, floating-point) using PNG compression.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
