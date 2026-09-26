
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, kitti-metrics-eval, mola-input-euroc-dataset, mola-input-kitti-dataset, mola-input-kitti360-dataset, mola-input-mulran-dataset, mola-input-paris-luco-dataset }:
buildRosPackage {
  pname = "ros-humble-mola-academic-datasets";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/humble/mola_academic_datasets/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "4843c8750fb972b9fc41bfceb96638d9c65e5a096c378460c51a4cf29c2f83f9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ kitti-metrics-eval mola-input-euroc-dataset mola-input-kitti-dataset mola-input-kitti360-dataset mola-input-mulran-dataset mola-input-paris-luco-dataset ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Metapackage with all packages supporting reading academic datasets.";
    license = with lib.licenses; [ bsd3 ];
  };
}
