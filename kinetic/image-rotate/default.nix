
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-reconfigure, catkin, cmake-modules, roscpp, image-transport, tf2-geometry-msgs, cv-bridge, nodelet, tf2, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-image-rotate";
  version = "1.12.23";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/image_rotate/1.12.23-0.tar.gz";
    name = "1.12.23-0.tar.gz";
    sha256 = "555f20936b6389f00c612a52c9b1b02e437b57694ed3413d26320029ea191fa3";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure cmake-modules roscpp image-transport tf2-geometry-msgs cv-bridge nodelet tf2 tf2-ros ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure roscpp image-transport tf2-geometry-msgs cv-bridge nodelet tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      Contains a node that rotates an image stream in a way that minimizes
      the angle between a vector in some arbitrary frame and a vector in the
      camera frame. The frame of the outgoing image is published by the node.
    </p>
    <p>
      This node is intended to allow camera images to be visualized in an
      orientation that is more intuitive than the hardware-constrained
      orientation of the physical camera. This is particularly helpful, for
      example, to show images from the PR2's forearm cameras with a
      consistent up direction, despite the fact that the forearms need to
      rotate in arbitrary ways during manipulation.
    </p>
    <p>
      It is not recommended to use the output from this node for further
      computation, as it interpolates the source image, introduces black
      borders, and does not output a camera_info.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
