
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf2-geometry-msgs, image-transport, catkin, cv-bridge, tf2-ros, tf2, rostest, nodelet, dynamic-reconfigure, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-image-rotate";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/image_rotate/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "bbfb1e066ba98a6f4ea1d3b7586dc0f25219e3716f025a97f6d1b7b1587ddaf5";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules tf2-geometry-msgs image-transport cv-bridge tf2-ros tf2 nodelet dynamic-reconfigure roscpp geometry-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ tf2-geometry-msgs image-transport cv-bridge roscpp tf2-ros tf2 dynamic-reconfigure nodelet ];
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
