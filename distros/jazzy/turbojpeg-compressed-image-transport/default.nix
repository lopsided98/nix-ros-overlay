
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, libjpeg_turbo }:
buildRosPackage {
  pname = "ros-jazzy-turbojpeg-compressed-image-transport";
  version = "0.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turbojpeg_compressed_image_transport-release/archive/release/jazzy/turbojpeg_compressed_image_transport/0.2.1-5.tar.gz";
    name = "0.2.1-5.tar.gz";
    sha256 = "d52502aa3d9808e6a33b8648f700ff9508ec4c3ac63fe2d0accdf9006872a1c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport libjpeg_turbo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compressed_image_transport provides a plugin to image_transport for transparently sending images
    encoded as JPEG by turbojpeg.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
