        for commit in ["1","2","3", "fixup! test test test"]; do
          if [[ $commit.message =~ ^fixup!.*$ ]]; then
            exit 1
          fi
        done

        modification other modification