
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, image-transport }:
buildRosPackage {
  pname = "ros-melodic-compressed-depth-image-transport";
  version = "1.9.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/melodic/compressed_depth_image_transport/1.9.6-1.tar.gz";
    name = "1.9.6-1.tar.gz";
    sha256 = "8ec936100e0c8dcfaf91ff57acc993981520e99ae7a9d052c26ce68c615ef1cf";
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
